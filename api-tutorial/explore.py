from twilio.rest import Client

client = Client(
    "AC263eb5b917f37088bdd76aa10b6bb7dd", 
    "f1b6a8fdf171ef9d472876245264bc19"
)

for msg in client.messages.list():
    print(f"Deleting {msg.body}")
    msg.delete()

# msg = client.messages.create(
#     to="+447588710919",
#     from_="+12029336139",
#     body="Hi from python"
# )

# print(f"Created a new message: {msg.sid}")