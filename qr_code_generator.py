import qrcode

data = 'Find out more at our website'

qr = qrcode.QRcode(version = 1, box_size=10, boarder=5)

qr.add_data(data)

img = qrcode.make(fit=true)
img = qr.make_image(fill_color = 'green', back_color = 'pink')

img.save('c:/users/cameronbeveridge/desktop/myqrcode.png')


