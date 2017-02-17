.class final Lcl/birdie/transantiagomaster/MainActivity$43;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$43;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 3560
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$43;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onActivarAds()V

    .line 3561
    return-void
.end method
