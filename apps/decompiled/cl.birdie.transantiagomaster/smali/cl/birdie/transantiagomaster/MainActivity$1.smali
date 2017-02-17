.class final Lcl/birdie/transantiagomaster/MainActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$1;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 310
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$1;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # invokes: Lcl/birdie/transantiagomaster/MainActivity;->refrescarIntersticial()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$5(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 315
    return-void
.end method
