.class Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;
.super Landroid/os/AsyncTask;
.source "PushLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/android/implementation/push/PushLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private dialogId:Ljava/lang/String;

.field registrationSucessful:Z

.field senderID:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/android/implementation/push/PushLibrary;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "senderID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 259
    iput-object p1, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 254
    iput-boolean v4, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->registrationSucessful:Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    .line 261
    iput-object p3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->senderID:Ljava/lang/String;

    .line 263
    # invokes: Lnet/veritran/android/implementation/push/PushLibrary;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lnet/veritran/android/implementation/push/PushLibrary;->access$300(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 264
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 265
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "sender_id"

    invoke-interface {v7, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, "appPushRegistering"

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "msgRegistering":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, "appPleaseWait"

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "msgPleaseWait":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    .line 276
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lnet/veritran/VTUserApplicationSmart;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 283
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 26
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lnet/veritran/android/implementation/push/PushLibrary;->access$400(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/List;

    move-result-object v22

    if-nez v22, :cond_0

    .line 288
    const-string v22, "PushLibrary"

    const-string v23, "Registration aborted, you must add PushNotificationListener to PushLibrary class"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v15, 0x0

    .line 418
    :goto_0
    return-object v15

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/android/implementation/push/PushLibrary;->isOnline(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 291
    const-string v22, "PushLibrary"

    const-string v23, "Internet connection not present"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v22, 0x66

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 298
    :cond_1
    :try_start_0
    const-string v15, ""

    .line 300
    .local v15, "registrationID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->usesGMS:Z
    invoke-static/range {v22 .. v22}, Lnet/veritran/android/implementation/push/PushLibrary;->access$000(Lnet/veritran/android/implementation/push/PushLibrary;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v16

    .line 306
    .local v16, "res":I
    if-eqz v16, :cond_2

    .line 308
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 313
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 316
    .local v6, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    const/4 v14, 0x0

    .line 317
    .local v14, "registered":Z
    const/4 v7, 0x0

    .line 319
    .local v7, "lastException":Ljava/io/IOException;
    const/16 v17, 0x0

    .line 321
    .local v17, "step":I
    const/4 v10, 0x6

    .line 322
    .local v10, "maxRetries":I
    const-wide/16 v18, 0xfa

    .line 323
    .local v18, "sleepMilisBlockPer":J
    const-wide/16 v8, 0x1f40

    .line 325
    .local v8, "maxBlockSleepMilis":J
    :cond_3
    :goto_1
    if-nez v14, :cond_4

    const/16 v22, 0x6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 327
    add-int/lit8 v17, v17, 0x1

    .line 331
    const/16 v22, 0x1

    :try_start_1
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->senderID:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 332
    const/4 v14, 0x1

    .line 339
    :goto_2
    if-nez v14, :cond_3

    const/16 v22, 0x6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 341
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    :try_start_2
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x406f400000000000L    # 250.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1f40

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 342
    .local v12, "maxSleepBlock":J
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextLong(J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v20

    .line 344
    .local v20, "sleepTimeMilis":J
    :try_start_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 345
    :catch_0
    move-exception v4

    .line 346
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v22, "PushLibrary"

    const-string v23, "Exception sleeping in miliseconds"

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 416
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v7    # "lastException":Ljava/io/IOException;
    .end local v8    # "maxBlockSleepMilis":J
    .end local v10    # "maxRetries":I
    .end local v12    # "maxSleepBlock":J
    .end local v14    # "registered":Z
    .end local v15    # "registrationID":Ljava/lang/String;
    .end local v16    # "res":I
    .end local v17    # "step":I
    .end local v18    # "sleepMilisBlockPer":J
    .end local v20    # "sleepTimeMilis":J
    :catch_1
    move-exception v5

    .line 417
    .local v5, "ex":Ljava/io/IOException;
    const-string v22, "PushLibrary"

    const-string v23, "Device registration failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v22, 0x65

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 334
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v7    # "lastException":Ljava/io/IOException;
    .restart local v8    # "maxBlockSleepMilis":J
    .restart local v10    # "maxRetries":I
    .restart local v14    # "registered":Z
    .restart local v15    # "registrationID":Ljava/lang/String;
    .restart local v16    # "res":I
    .restart local v17    # "step":I
    .restart local v18    # "sleepMilisBlockPer":J
    :catch_2
    move-exception v5

    .line 336
    .restart local v5    # "ex":Ljava/io/IOException;
    move-object v7, v5

    goto :goto_2

    .line 351
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_4
    if-nez v14, :cond_5

    .line 353
    :try_start_5
    throw v7

    .line 357
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    # invokes: Lnet/veritran/android/implementation/push/PushLibrary;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lnet/veritran/android/implementation/push/PushLibrary;->access$200(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    const-string v22, "PushLibrary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Device registration id ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v7    # "lastException":Ljava/io/IOException;
    .end local v8    # "maxBlockSleepMilis":J
    .end local v10    # "maxRetries":I
    .end local v14    # "registered":Z
    .end local v16    # "res":I
    .end local v17    # "step":I
    .end local v18    # "sleepMilisBlockPer":J
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->registrationSucessful:Z

    goto/16 :goto_0

    .line 363
    :cond_7
    const-string v22, "PushLibrary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Register old GCM: senderId: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->senderID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    # invokes: Lnet/veritran/android/implementation/push/PushLibrary;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lnet/veritran/android/implementation/push/PushLibrary;->access$500(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, "regId":Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 377
    const-string v22, "PushLibrary"

    const-string v23, "Device OK"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->senderID:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 388
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->latchRegister:Ljava/util/concurrent/CountDownLatch;
    invoke-static/range {v22 .. v22}, Lnet/veritran/android/implementation/push/PushLibrary;->access$600(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v22

    const-wide/16 v24, 0x3c

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 398
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    # invokes: Lnet/veritran/android/implementation/push/PushLibrary;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lnet/veritran/android/implementation/push/PushLibrary;->access$500(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 400
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 402
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Couldn\'t register Push"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 389
    :catch_3
    move-exception v4

    .line 390
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Couldn\'t register Push"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 395
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_8
    const-string v22, "PushLibrary"

    const-string v23, "Already registered"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .line 425
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 427
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->closeMessage(Ljava/lang/String;)V

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->dialogId:Ljava/lang/String;

    .line 432
    :cond_0
    if-eqz p1, :cond_3

    .line 433
    iget-boolean v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->registrationSucessful:Z

    if-nez v3, :cond_2

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 437
    .local v1, "errorCode":I
    if-lez v1, :cond_1

    if-ge v1, v5, :cond_1

    .line 441
    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 445
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 449
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_1
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;
    invoke-static {v3}, Lnet/veritran/android/implementation/push/PushLibrary;->access$400(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;

    .line 450
    .local v2, "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;->registerError(I)V

    goto :goto_0

    .line 453
    .end local v1    # "errorCode":I
    .end local v2    # "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    :cond_2
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;
    invoke-static {v3}, Lnet/veritran/android/implementation/push/PushLibrary;->access$400(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;

    .line 454
    .restart local v2    # "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    invoke-interface {v2, p1}, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;->registerSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 458
    .end local v2    # "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    :cond_3
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;
    invoke-static {v3}, Lnet/veritran/android/implementation/push/PushLibrary;->access$400(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;

    .line 459
    .restart local v2    # "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;->registerError(I)V

    goto :goto_2

    .line 462
    .end local v2    # "listener":Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;
    :cond_4
    return-void
.end method
