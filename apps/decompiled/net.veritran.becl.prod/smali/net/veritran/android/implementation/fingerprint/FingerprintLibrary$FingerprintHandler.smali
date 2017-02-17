.class public Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintLibrary.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintHandler"
.end annotation


# static fields
.field private static final MAX_AUTH_FAIL:I = 0x4


# instance fields
.field private appContext:Landroid/content/Context;

.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private failedAuthCounter:Ljava/lang/Integer;

.field public fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

.field final synthetic this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;


# direct methods
.method public constructor <init>(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    iput-object p1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 343
    iput-object p2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->appContext:Landroid/content/Context;

    .line 344
    return-void
.end method

.method public constructor <init>(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;Landroid/content/Context;Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;)V
    .locals 1
    .param p1, "this$0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    .prologue
    .line 346
    iput-object p1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 347
    iput-object p2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->appContext:Landroid/content/Context;

    .line 348
    iput-object p3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    .line 350
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    .line 351
    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 3
    .param p1, "acquireInfo"    # I

    .prologue
    .line 447
    const-string v0, "FingerprintLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationAcquired: acquiring fingerprint, acquireInfoCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 374
    const-string v2, "FingerprintLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthenticationError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 377
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    const/16 v3, 0x66

    invoke-interface {v2, v3}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    .line 378
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 391
    :goto_0
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->cancel()V

    .line 392
    return-void

    .line 380
    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 382
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    const/16 v3, 0x65

    invoke-interface {v2, v3}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    .line 384
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    const-string v3, "$id"

    const-string v4, "dlgMsg"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 385
    .local v0, "messageId":Ljava/lang/Integer;
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 386
    .local v1, "messageTextView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    .end local v0    # "messageId":Ljava/lang/Integer;
    .end local v1    # "messageTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    .line 389
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 7

    .prologue
    .line 431
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    .line 432
    const-string v3, "FingerprintLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAuthenticationFailed: Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->appContext:Landroid/content/Context;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    const-string v5, "$anim"

    const-string v6, "shake"

    invoke-virtual {v4, v5, v6}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 435
    .local v2, "shake":Landroid/view/animation/Animation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "$id"

    const-string v5, "dlgMsg"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 436
    .local v0, "messageId":Ljava/lang/Integer;
    iget-object v3, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v3}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 437
    .local v1, "messageTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 405
    const-string v0, "FingerprintLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 416
    const-string v1, "FingerprintLibrary"

    const-string v2, "onAuthenticationSucceeded: OK!"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v1}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$200(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    # invokes: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->getAuthenticatorId(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$300(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "setOfFingerprintsId":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->fingerprintListener:Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifySuccess(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 422
    return-void
.end method

.method public startAuth(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 6
    .param p1, "manager"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->failedAuthCounter:Ljava/lang/Integer;

    .line 361
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->appContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v2, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 365
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 367
    :cond_0
    return-void
.end method
