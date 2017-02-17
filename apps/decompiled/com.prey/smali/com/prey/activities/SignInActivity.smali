.class public Lcom/prey/activities/SignInActivity;
.super Landroid/app/Activity;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/SignInActivity$AddDeviceToAccount;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x3

.field private static final NO_MORE_DEVICES_WARNING:I


# instance fields
.field private error:Ljava/lang/String;

.field private noMoreDeviceError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z

    return-void
.end method

.method static synthetic access$100(Lcom/prey/activities/SignInActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z

    return v0
.end method

.method static synthetic access$102(Lcom/prey/activities/SignInActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/SignInActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/prey/activities/SignInActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/prey/activities/SignInActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/SignInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/SignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/InitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/prey/activities/SignInActivity;->finish()V

    .line 204
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->requestWindowFeature(I)Z

    .line 75
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->setRequestedOrientation(I)V

    .line 76
    const v17, 0x7f04004d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->setContentView(I)V

    .line 77
    const-string v17, "onCreate of SignInActivity"

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 79
    const v17, 0x7f1000fc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 82
    .local v2, "buttonSignin":Landroid/widget/Button;
    const v17, 0x7f1000fa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 83
    .local v6, "emailText":Landroid/widget/EditText;
    const v17, 0x7f1000fb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 86
    .local v13, "passwordText":Landroid/widget/EditText;
    move-object/from16 v3, p0

    .line 88
    .local v3, "ctx":Landroid/content/Context;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/SignInActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    div-int/lit8 v7, v17, 0x3

    .line 94
    .local v7, "halfHeight":I
    const v17, 0x7f1000fd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 97
    .local v10, "linkSignin":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/SignInActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "fonts/MagdaClean/magdacleanmono-regular.ttf"

    invoke-static/range {v17 .. v18}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 98
    .local v11, "magdacleanmonoRegular":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/SignInActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static/range {v17 .. v18}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v16

    .line 100
    .local v16, "titilliumWebBold":Landroid/graphics/Typeface;
    const v17, 0x7f1000f8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 101
    .local v14, "textViewInit1":Landroid/widget/TextView;
    const v17, 0x7f1000f9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 102
    .local v15, "textViewInit2":Landroid/widget/TextView;
    const v17, 0x7f1000fa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 103
    .local v4, "editTextEmailAddress":Landroid/widget/EditText;
    const v17, 0x7f1000fb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 105
    .local v5, "editTextPassword":Landroid/widget/EditText;
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    new-instance v9, Lcom/prey/util/KeyboardStatusDetector;

    invoke-direct {v9}, Lcom/prey/util/KeyboardStatusDetector;-><init>()V

    .line 116
    .local v9, "keyboard":Lcom/prey/util/KeyboardStatusDetector;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/prey/util/KeyboardStatusDetector;->registerActivity(Landroid/app/Activity;)V

    .line 117
    new-instance v17, Lcom/prey/activities/SignInActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v7}, Lcom/prey/activities/SignInActivity$1;-><init>(Lcom/prey/activities/SignInActivity;Landroid/widget/TextView;I)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/prey/util/KeyboardStatusDetector;->setVisibilityListener(Lcom/prey/util/KeyboardVisibilityListener;)Lcom/prey/util/KeyboardStatusDetector;

    .line 144
    new-instance v17, Lcom/prey/activities/SignInActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v13, v3}, Lcom/prey/activities/SignInActivity$2;-><init>(Lcom/prey/activities/SignInActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v17, Lcom/prey/activities/SignInActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/SignInActivity$3;-><init>(Lcom/prey/activities/SignInActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v17, 0x7f1000fe

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prey/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 187
    .local v8, "imageViewQr":Landroid/widget/ImageView;
    new-instance v17, Lcom/prey/activities/SignInActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/SignInActivity$4;-><init>(Lcom/prey/activities/SignInActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f09008a

    const/4 v3, 0x0

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "pass":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 227
    .end local v0    # "pass":Landroid/app/Dialog;
    :goto_0
    :pswitch_0
    return-object v0

    .line 213
    .restart local v0    # "pass":Landroid/app/Dialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/prey/activities/SignInActivity$5;

    invoke-direct {v2, p0}, Lcom/prey/activities/SignInActivity$5;-><init>(Lcom/prey/activities/SignInActivity;)V

    .line 214
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/prey/activities/SignInActivity$6;

    invoke-direct {v2, p0}, Lcom/prey/activities/SignInActivity$6;-><init>(Lcom/prey/activities/SignInActivity;)V

    .line 221
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "onPause of SignInActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const v2, 0x7f09008a

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "ad":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 264
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 266
    :goto_0
    return-void

    :pswitch_1
    move-object v0, p2

    .line 236
    check-cast v0, Landroid/app/AlertDialog;

    .line 237
    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 238
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 239
    iget-object v1, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/prey/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prey/activities/SignInActivity$7;

    invoke-direct {v2, p0}, Lcom/prey/activities/SignInActivity$7;-><init>(Lcom/prey/activities/SignInActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 246
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    move-object v0, p2

    .line 251
    check-cast v0, Landroid/app/AlertDialog;

    .line 252
    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 253
    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 254
    iget-object v1, p0, Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/prey/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prey/activities/SignInActivity$8;

    invoke-direct {v2, p0}, Lcom/prey/activities/SignInActivity$8;-><init>(Lcom/prey/activities/SignInActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "onResume of SignInActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    return-void
.end method
