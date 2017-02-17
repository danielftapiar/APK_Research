.class public Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;
.super Ljava/lang/Object;
.source "FingerprintLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_API_VERSION:I = 0x1

.field private static final KEY_NAME:Ljava/lang/String; = "vt_fingerprint_key"

.field public static final TAG:Ljava/lang/String; = "FingerprintLibrary"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private final context:Landroid/content/Context;

.field private cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private dialog:Landroid/app/Dialog;

.field private fingerprintHandler:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

.field private fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private keyGenerator:Ljavax/crypto/KeyGenerator;

.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    const-string v1, "fingerprint"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintHandler:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 50
    invoke-static {p0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->getAuthenticatorId(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createAuthenticatePopup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, "themeInt":Ljava/lang/Integer;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-lt v9, v10, :cond_1

    .line 240
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 246
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 247
    new-instance v9, Landroid/app/Dialog;

    iget-object v10, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    .line 252
    :goto_1
    iget-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 253
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$layout"

    const-string v11, "fingerprint"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, "dialogView":Landroid/view/View;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$id"

    const-string v11, "dlgTitle"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 256
    .local v7, "titleId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 257
    .local v8, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$id"

    const-string v11, "dlgMsg"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 260
    .local v4, "messageId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 261
    .local v5, "messageTextView":Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$id"

    const-string v11, "dlgCancelBtn"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    .local v1, "buttonId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 265
    .local v0, "btn":Landroid/widget/Button;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$string"

    const-string v11, "appCancel"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 267
    new-instance v9, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;

    invoke-direct {v9, p0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;-><init>(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 286
    iget-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const-string v11, "#96000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 291
    iget-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 292
    return-void

    .line 242
    .end local v0    # "btn":Landroid/widget/Button;
    .end local v1    # "buttonId":Ljava/lang/Integer;
    .end local v2    # "dialogView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "messageId":Ljava/lang/Integer;
    .end local v5    # "messageTextView":Landroid/widget/TextView;
    .end local v7    # "titleId":Ljava/lang/Integer;
    .end local v8    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_0

    .line 243
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 249
    :cond_2
    new-instance v9, Landroid/app/Dialog;

    iget-object v10, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;

    goto/16 :goto_1
.end method

.method private static getAuthenticatorId(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/String;
    .locals 9
    .param p0, "fingerprintManager"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 105
    const-string v5, ""

    .line 109
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 111
    .local v2, "c":Ljava/lang/Class;
    const-string v6, "getAuthenticatorId"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 113
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 115
    .local v0, "authenticatorId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 125
    .end local v0    # "authenticatorId":J
    .end local v2    # "c":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v5

    .line 120
    :catch_0
    move-exception v3

    .line 122
    .local v3, "ex":Ljava/lang/Exception;
    const-string v6, "FingerprintLibrary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutenticatorId Reflection error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "fingerprintListener"    # Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 300
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    const-string v1, "Register at least one fingerprint in Settings"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-interface {p3, v2}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->generateKey()V

    .line 316
    invoke-virtual {p0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cipherInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 319
    new-instance v0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;-><init>(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;Landroid/content/Context;Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;)V

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintHandler:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

    .line 321
    invoke-direct {p0, p1, p2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->createAuthenticatePopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintHandler:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {v0, v1, v2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->startAuth(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {p3, v2}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-interface {p3, v2}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    goto :goto_0
.end method

.method public cipherInit()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 201
    :try_start_0
    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :goto_0
    :try_start_1
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 213
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyStore:Ljava/security/KeyStore;

    const-string v4, "vt_fingerprint_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 214
    .local v1, "key":Ljavax/crypto/SecretKey;
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8

    .line 232
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    :goto_1
    return v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "FingerprintLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get Cipher instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "FingerprintLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get Cipher instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v0

    .line 217
    .local v0, "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0    # "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 218
    :catch_3
    move-exception v0

    .line 219
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 220
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_4
    move-exception v0

    .line 221
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v0

    .line 223
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_6
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 227
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_8
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init Cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected generateKey()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 151
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    :try_start_1
    const-string v1, "AES"

    const-string v2, "AndroidKeyStore"

    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyGenerator:Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    :goto_1
    :try_start_2
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 172
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyGenerator:Ljavax/crypto/KeyGenerator;

    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v3, "vt_fingerprint_key"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CBC"

    aput-object v5, v3, v4

    .line 176
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 179
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "PKCS7Padding"

    aput-object v5, v3, v4

    .line 180
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 184
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 195
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get KeyStore instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get KeyGenerator instance, wrong KeyGenerator algorithm?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 163
    .local v0, "e":Ljava/security/NoSuchProviderException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get KeyGenerator instance, wrong provider?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 186
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v0

    .line 187
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to init the KeyGenerator instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 189
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to init the KeyGenerator instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v0

    .line 191
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to init the KeyGenerator instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_6
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FingerprintLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to init the KeyGenerator instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isFingerprintActive()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isFingerprintAvailable()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
