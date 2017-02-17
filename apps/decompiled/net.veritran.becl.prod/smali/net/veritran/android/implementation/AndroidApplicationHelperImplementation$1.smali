.class Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$1;
.super Ljava/lang/Object;
.source "AndroidApplicationHelperImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$1;->this$0:Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    iput-object p2, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;->defineUserAgentString(Landroid/content/Context;)V

    .line 56
    return-void
.end method
