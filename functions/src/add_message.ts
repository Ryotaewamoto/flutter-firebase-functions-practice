import * as functions from "firebase-functions"
import * as admin from "firebase-admin"

// Take the text parameter passed to this HTTP endpoint and insert it into
// Firestore under the path /messages/:documentId/original
exports.addMessage = functions
  .region("asia-northeast1")
  .https.onRequest(async (req, res) => {
    // Grab the text parameter.
    const original = req.query.text
    // Push the new message into Firestore using the Firebase Admin SDK.
    const writeResult = await admin
      .firestore()
      .collection("messages")
      .add({ original: original })
    // Send back a message that we've successfully written the message
    res.json({ result: `Message with ID: ${writeResult.id} added.` })
  })
