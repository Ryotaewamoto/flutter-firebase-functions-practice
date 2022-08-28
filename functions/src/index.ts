import * as firebaseAdmin from "firebase-admin";
import * as functions from "firebase-functions";
// eslint-disable-next-line import/namespace
import * as addMessage from "./add_message";

// Firebaseプロジェクトの初期化
firebaseAdmin.initializeApp(functions.config().firebase);

export { addMessage };
