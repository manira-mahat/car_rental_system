const String appName="Car Rental System";
const String splashScreenTitle="RENTAL";
const String splashLogoPath="assets/images/splashLogo.png";
const String letsStartImagePath="assets/images/lets_start.png";
const String googleLogoPath="assets/images/google_logo.png";
const String facebookLogoPath="assets/images/facebook_logo.png";
// const String createAccountStr="Create Account";

const String getStartedTitleStr="Lets get Started";
const String getStartedSubTitleStr="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been";
const String registerStr="Register";
const String createAccountStr="Create Account";
const String alreadyHaveAccountStr="Already have an account? ";
const String loginStr="Login";

const String nameStr="Name";
const String namePlaceStr="Enter your name";
const String validateNamestr="Please enter name";
const  String validateNameRegxStr="PLease enter name only containing letters and spaces";
const String namePatternStr = r'^[A-Za-z]+(?: [A-Za-z]+)*$';
RegExp nameRegex = RegExp(namePatternStr);

const String emailAddressStr="Email Address";
const String emailAddressPlaceStr="Enter your email address";
const String validateEmailAddressStr="PLease enter email";
const String validateEmailAddressRegexStr="PLease enter email address with @ and proper format";
const String emailPatternStr = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
RegExp emailRegex = RegExp(emailPatternStr);


const String passwordStr="Password";
const String passwordPlaceStr="Enter Password";
const String validatePasswordStr="PLease enter password ";
const String validatePasswordRegexStr="PLease enter password with at least 8 characters long, contain at least one uppercase letter and one number";
const String passwordPatternStr = r'^(?=.*[A-Z])(?=.*\d).{8,}$';
RegExp passwordRegex = RegExp(passwordPatternStr);

const String agreeTermsAndConditionStr='I agree to the terms and conditions';
const String notAgreedToTermsAndConditionsMessage="PLease agree to terms and condition to signup";

const String welcomeBackStr="Welcome Back";
const String rememberMeStr="Remember Me";
const String forgetPasswordStr="Forget Password";
const String dontHaveAccountStr="Don't have an account?";

const String signupSuccessfullyStr="Sign Up Successfully!!!";
const String loginSuccessfullyStr="Logged in successfully";
const String failedStr="Failed !";
const String credentialsDidnotMatchStr="Credentials didnot match";
const String sendCodeStr="Send Code";
const String verifyAccountStr="Verify Account";
const String didntReceiveOtpStr="Didn't recieve otp? ";
const String resendOtpStr="Re-send";
const String validateOtpStr="PLease enter valid otp";

const String newPasswordStr="New Password";
const String confirmPasswordStr="Confirm Password";
const String resetPasswordStr="Reset Password";
const String passwordDidntMatchStr="Password didn't match";

//home page strings
const String locationStr="Location";
const String searchCarBarStr="Search Car....";
const String topBrandsStr="Top Brands";
const String popularCarStr="Popular Car";
const String seeAllStr="See All";
const String manualTypeStr="Manual";
const String automaticTypeStr="Auto";
const String rentalNowStr="Rental Now";

//car detail page strings
const String carDetailStr="Car Details";
const String aboutStr="About";
const String galleryStr="Gallery";
const String reviewStr="Review";
const String rentPartnerStr="Rent Partner";
const String ownerStr="Owner";
const String descriptionStr="Description";
const String rentNowStr="Rent Now";
const String priceStr="Price";
const String perDayStr="/ day";

// add car form page
const String addCarDetailsStr="Add Car Details";
const String carNameLabelStr="Car Name";
const String carImageLabelStr="Car Image";
const String carLogoLabelStr="Car Logo";
const String carBrandLabelStr="Car Brand";
const String carTypeLabelStr="Car Type";
const String totalPassengerCapacityLabelStr="Passenger Capacity";
const String fuelCapacityLabelStr="Fuel Capacity";
const String priceLabelStr="Rent Price";

const String carNameHintStr="Enter Car Name";
const String carImageHintStr="Enter Car Image";
const String carLogoHintStr="Enter Car Logo";
const String carBrandHintStr="Enter Brand";
const String carTypeHintStr="Enter Car Type";
const String totalPassengerCapacityHintStr="Enter Passenger Capacity";
const String fuelCapacityHintStr="Enter Fuel Capacity";
const String priceHintStr="Enter Rent Price";

const String carNameValidateString = "Please enter car name";
const String carImageValidateString = "Please enter car image";
const String carLogoValidateString = "Please enter car logo";
const String carBrandValidateString = "Please enter car brand";
const String carTypeValidateString = "Please enter car type";
const String totalPassengerCapacityValidateString = "Please enter total passenger capacity";
const String fuelCapacityValidateString = "Please enter total fuel capacity";
const String priceValidateString = "Please enter rent price";
const String submitStr="Submit";
const String carDetailsAddedSuccessStr="Car Details Added successfully";
const String carDetailsAddedFailStr="Failed to add Car Details ";

//view car details string
const String viewCarDetailsStr="View Car Details";