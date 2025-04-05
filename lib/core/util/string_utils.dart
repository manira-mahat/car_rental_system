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
