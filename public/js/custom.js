function showActive(id){
    //highlight current menu item
    var listItems = document.querySelectorAll('li');
    listItems.forEach(function(item, index) {
        // Check if the current list item's index matches the 'id'
        if (index == id-1) {
            // Add the 'active' class to the current list item
            item.classList.add('active');
        } else {
            // Remove the 'active' class from other list items
            item.classList.remove('active');
        }
    });
}

/* ===========================================
                CONTACT FORM FUNCTION
============================================ */
function mailForm(name, email, msg){
    //Set recipient email address
    recipient = 'contact@londonhousepublishers.com';

    window.location.href='mailto:'+recipient+'?subject=Contact Form Message&body='+msg+'%0A%0ABest regards,%0A%0A'+name+'%0A('+email+')';
}

/* ===========================================
                ONE CLICK ENQUIRY
============================================ */
function oneClickEnquiry(){
    //Set recipient email address and message
    recipient = 'contact@londonhousepublishers.com';
    msg = 'Dear London House Publishers, %0A%0AI\'m interested in making a submission. %0A%0AMy name is [Add name here] and my contact telephone number is [Add telephone numer here]. %0A%0AI am [a new author, a previously self-published author, a published author, published with [name of publishing house]]. I have writtem [number] books. Please can you provide more details about the publishing process and costs with London house Publishers. %0A%0AI look forward to hearing from you in due course.';


    window.location.href='mailto:'+recipient+'?subject=Quick Submissions Enquiry&body='+msg+'%0A%0ABest regards,%0A%0A[Add you name here]%0A';
   
}


/* ===========================================
        KEYBOARD ACCESS FOR ENTER KEY
============================================ */
document.addEventListener('keydown', function(event) {
    //Make all .item elements focusable
    var items = Array.from(document.querySelectorAll('.item'));
    items.forEach(item => item.setAttribute('tabindex', '0'));

    if (event.key === 'Enter') { // Check if the pressed key is Enter
        var focusedElement = document.activeElement;
        if (focusedElement && focusedElement.classList.contains('item')) {
            focusedElement.click(); // Trigger click event
        }
    } else if (event.key === 'Tab') { // Check if the pressed key is Tab
      var focusedElement = document.activeElement;
      var items = document.querySelectorAll('.item');
      var firstItem = items[0];
      var lastItem = items[items.length - 1];
      
      if (focusedElement === lastItem && !event.shiftKey) { // If last item and Tab key is pressed
          event.preventDefault(); // Prevent default tab behavior
          firstItem.focus(); // Set focus to the first item
      } else if (focusedElement === firstItem && event.shiftKey) { // If first item and Shift+Tab key is pressed
          event.preventDefault(); // Prevent default tab behavior
          lastItem.focus(); // Set focus to the last item
      }
    } 
  });

