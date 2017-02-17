.class public final Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# instance fields
.field private final nG:Lcom/google/android/gms/internal/bs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    return-void
.end method


# virtual methods
.method public final onAdClicked$5d701161()V
    .locals 2

    .prologue
    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->P()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdClosed$5d701161()V
    .locals 2

    .prologue
    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdClosed$8bf39f()V
    .locals 2

    .prologue
    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdFailedToLoad$10f20d3e(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onAdFailedToLoad with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bs;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdFailedToLoad$50928dc2(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onAdFailedToLoad with error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bs;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdLeftApplication$5d701161()V
    .locals 2

    .prologue
    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdLeftApplication$8bf39f()V
    .locals 2

    .prologue
    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdLoaded$5d701161()V
    .locals 2

    .prologue
    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdLoaded$8bf39f()V
    .locals 2

    .prologue
    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdOpened$5d701161()V
    .locals 2

    .prologue
    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAdOpened$8bf39f()V
    .locals 2

    .prologue
    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->aj(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->nG:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
