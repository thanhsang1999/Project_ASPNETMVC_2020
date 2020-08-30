/* SMART WIZARD */
		
function init_SmartWizard() {
			
    if( typeof ($.fn.smartWizard) === 'undefined'){ return; }
   // console.log('init_SmartWizard');
    
    $('#wizard').smartWizard();

    $('#wizard_verticle').smartWizard({
      transitionEffect: 'slide'
    });

    $('.buttonNext').addClass('btn btn-success');
    $('.buttonPrevious').addClass('btn btn-primary');
    $('.buttonFinish').addClass('btn btn-default');
    
};

/* VALIDATOR */

function init_validator () {
 
if( typeof (validator) === 'undefined'){ return; }
console.log('init_validator'); 

// initialize the validator function
validator.message.date = 'not a real date';

// validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
$('form')
.on('blur', 'input[required], input.optional, select.required', validator.checkField)
.on('change', 'select.required', validator.checkField)
.on('keypress', 'input[required][pattern]', validator.keypress);

$('.multi.required').on('keyup blur', 'input', function() {
validator.checkField.apply($(this).siblings().last()[0]);
});

$('form').submit(function(e) {
e.preventDefault();
var submit = true;

// evaluate the form using generic validaing
if (!validator.checkAll($(this))) {
  submit = false;
}

if (submit)
  this.submit();

return false;
});

};



init_SmartWizard();
init_validator ();