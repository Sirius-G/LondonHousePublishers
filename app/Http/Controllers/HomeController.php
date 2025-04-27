<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contents;
use App\Models\Book;
use App\Models\Author;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('welcome', 'submissionguide', 'recentpublications', 'contact', 'submissionsportal');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function welcome()
    {
        $data = Contents::where('id', 1)->get();

        return view('welcome')->with('data', $data);
    }
    public function submissionguide()
    {
        $data = Contents::where('id', 2)->get();

        return view('submissionguide')->with('data', $data);
    }

    public function contact()
    {
        $data = Contents::where('id', 3)->get();

        return view('contact')->with('data', $data);
    }
    public function recentpublications()
    {
        $data = Contents::where('id', 4)->get();

        $books = Book::with('authors')->orderby('books.id', 'asc')->get();

        return view('recentpublications')->with('data', $data)->with('books', $books);
    }

    public function submissionsportal()
    {
        return view('submissionsportal');
    }


    public function admin()
    {
        return view('admin.dashboard');
    }

    public function update_contents(Request $request, $id){

        //Validation
        $this->validate($request, [
            'content1' => 'required'
        ]);

        $content = $_POST['content1'];
        //if $content is not empty update DB

        if($content){
            try{
                //Update Post
                $post = Contents::find($id);
                $post->content = $content;
                $post->save();

                Session::flash('success', 'Contents updated successfully!');

            } catch(\Illuminate\Database\QueryException $e){
                $errorCode = $e->errorInfo[1];
                return back()->with('error', 'Error code: '. $errorCode);
            }
        }
    }




    public function book_details($id) {
        $book = Book::with('authors')->orderby('books.id', 'asc')->where('books.id', $id)->get();

        return view('book_details')
             ->with('book', $book);
  
    }

    public function index(Request $request)
    {
        $sb = $request->input('search_books');

        if($sb){
            $books = Book::leftjoin('authors', 'book_author_id' , '=', 'author_id')
            ->where(DB::Raw('lower(title)'), 'like', '%' . strtolower($sb) . '%')
            ->orwhere(DB::Raw('lower(genre)'), 'like', '%' . strtolower($sb) . '%')
            ->orwhere(DB::Raw('lower(pen_name)'), 'like', '%' . strtolower($sb) . '%')
            ->orderby('books.id', 'asc')
            ->paginate(100);
        } else {
            $books = Book::leftjoin('authors', 'book_author_id' , '=', 'author_id')
            ->orderby('books.id', 'desc')
            ->paginate(12);            
        }

        return view('recentpublications')->with('books', $books);


    }





}
