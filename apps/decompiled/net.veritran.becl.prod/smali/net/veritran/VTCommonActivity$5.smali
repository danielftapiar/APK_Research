.class Lnet/veritran/VTCommonActivity$5;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTCommonActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$reqCode:I

.field final synthetic val$resCode:I


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 1569
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$5;->this$0:Lnet/veritran/VTCommonActivity;

    iput p2, p0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    iput p3, p0, Lnet/veritran/VTCommonActivity$5;->val$resCode:I

    iput-object p4, p0, Lnet/veritran/VTCommonActivity$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 1573
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    const v4, 0xc0de

    if-ne v1, v4, :cond_4

    .line 1574
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/veritran/VTCommonActivity$5;->val$resCode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/VTCommonActivity$5;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v4, v5}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v20

    .line 1576
    .local v20, "scanResult":Lcom/google/zxing/integration/android/IntentResult;
    if-nez v20, :cond_1

    .line 1577
    const-string v11, "106"

    .line 1578
    .local v11, "errorCode":Ljava/lang/String;
    invoke-static {v11}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseFail(Ljava/lang/String;)V

    .line 1685
    .end local v11    # "errorCode":Ljava/lang/String;
    .end local v20    # "scanResult":Lcom/google/zxing/integration/android/IntentResult;
    :cond_0
    :goto_0
    return-void

    .line 1580
    .restart local v20    # "scanResult":Lcom/google/zxing/integration/android/IntentResult;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v19

    .line 1581
    .local v19, "result":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 1582
    invoke-static/range {v19 .. v19}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseSuccesful(Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$resCode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 1585
    const-string v11, "107"

    .line 1586
    .restart local v11    # "errorCode":Ljava/lang/String;
    invoke-static {v11}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseFail(Ljava/lang/String;)V

    goto :goto_0

    .line 1588
    .end local v11    # "errorCode":Ljava/lang/String;
    :cond_3
    const-string v11, "106"

    .line 1589
    .restart local v11    # "errorCode":Ljava/lang/String;
    invoke-static {v11}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseFail(Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    .end local v11    # "errorCode":Ljava/lang/String;
    .end local v19    # "result":Ljava/lang/String;
    .end local v20    # "scanResult":Lcom/google/zxing/integration/android/IntentResult;
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    const/16 v4, 0x533

    if-ne v1, v4, :cond_8

    .line 1599
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTAbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1601
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "image_name"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1602
    .local v15, "imageId":Ljava/lang/String;
    const-string v1, "image_path"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1606
    .local v16, "imagePath":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$resCode:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    .line 1608
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v0, v16

    # invokes: Lnet/veritran/VTCommonActivity;->getOrientedPhoto(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v0}, Lnet/veritran/VTCommonActivity;->access$600(Lnet/veritran/VTCommonActivity;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1610
    .local v17, "is":Ljava/io/InputStream;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v1

    const-string v4, "never"

    move-object/from16 v0, v17

    invoke-virtual {v1, v15, v0, v4}, Lnet/veritran/utils/ImageHandler;->putPersistentImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1612
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1613
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "image_name"

    const/4 v4, 0x0

    invoke-interface {v10, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "is":Ljava/io/InputStream;
    :cond_5
    if-eqz v16, :cond_6

    .line 1632
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1636
    .end local v13    # "file":Ljava/io/File;
    :cond_6
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1616
    :catch_0
    move-exception v12

    .line 1618
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v1, "VTCommonActivity"

    const-string v4, "FileNotFoundException PhotoLibrary take Photo"

    invoke-static {v1, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    if-eqz v16, :cond_0

    .line 1632
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1633
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1622
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .end local v13    # "file":Ljava/io/File;
    :catch_1
    move-exception v12

    .line 1624
    .local v12, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "VTCommonActivity"

    const-string v4, "IOException PhotoLibrary take Photo"

    invoke-static {v1, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1630
    if-eqz v16, :cond_0

    .line 1632
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1633
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1630
    .end local v12    # "ex":Ljava/io/IOException;
    .end local v13    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_7

    .line 1632
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1633
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1634
    .end local v13    # "file":Ljava/io/File;
    :cond_7
    throw v1

    .line 1638
    .end local v15    # "imageId":Ljava/lang/String;
    .end local v16    # "imagePath":Ljava/lang/String;
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    const/16 v4, 0x534

    if-ne v1, v4, :cond_b

    .line 1640
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->val$intent:Landroid/content/Intent;

    if-nez v1, :cond_9

    .line 1641
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1644
    :cond_9
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1645
    .restart local v18    # "prefs":Landroid/content/SharedPreferences;
    const-string v1, "image_name"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1646
    .restart local v15    # "imageId":Ljava/lang/String;
    const-string v1, "image_path"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1648
    .restart local v16    # "imagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1649
    .local v2, "selectedImageUri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 1650
    .local v3, "filePathColumn":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1651
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1653
    .local v14, "filePath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1654
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1655
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1657
    .end local v7    # "columnIndex":I
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1662
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->this$0:Lnet/veritran/VTCommonActivity;

    # invokes: Lnet/veritran/VTCommonActivity;->getOrientedPhoto(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v14}, Lnet/veritran/VTCommonActivity;->access$600(Lnet/veritran/VTCommonActivity;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1664
    .restart local v17    # "is":Ljava/io/InputStream;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v1

    const-string v4, "never"

    move-object/from16 v0, v17

    invoke-virtual {v1, v15, v0, v4}, Lnet/veritran/utils/ImageHandler;->putPersistentImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1666
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1667
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "image_name"

    const/4 v4, 0x0

    invoke-interface {v10, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1679
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1669
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v9

    .line 1670
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string v1, "VTCommonActivity"

    const-string v4, "FileNotFoundException PhotoLibrary photo Gallery"

    invoke-static {v1, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1673
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v12

    .line 1675
    .restart local v12    # "ex":Ljava/io/IOException;
    const-string v1, "VTCommonActivity"

    const-string v4, "IOException PhotoLibrary take Photo"

    invoke-static {v1, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-static {}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->notifyEndEvent(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1683
    .end local v2    # "selectedImageUri":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "ex":Ljava/io/IOException;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "imageId":Ljava/lang/String;
    .end local v16    # "imagePath":Ljava/lang/String;
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity$5;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v0, p0

    iget v4, v0, Lnet/veritran/VTCommonActivity$5;->val$reqCode:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/veritran/VTCommonActivity$5;->val$resCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/VTCommonActivity$5;->val$intent:Landroid/content/Intent;

    # invokes: Lnet/veritran/VTCommonActivity;->executeOnActivityResultCallApi(IILandroid/content/Intent;)V
    invoke-static {v1, v4, v5, v6}, Lnet/veritran/VTCommonActivity;->access$700(Lnet/veritran/VTCommonActivity;IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
