import Dehaze
import cv2

# Read the image from the root folder
img = cv2.imread("./images/test5.jpeg", cv2.IMREAD_COLOR)

# Apply the dehazing function
dehazed_img = Dehaze.dhazei(img, 0)

# Display the original and dehazed images
cv2.imshow('Hazy Image', img)
cv2.imshow('Dehazed Image', dehazed_img)

# Wait for a key press and close the image windows
cv2.waitKey(0)
cv2.destroyAllWindows()
