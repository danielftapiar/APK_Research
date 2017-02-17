.class final Lcl/birdie/transantiagomaster/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onLike(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 994
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 995
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 986
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060133

    .line 987
    const/4 v2, 0x1

    .line 986
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 988
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$5;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$6(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 990
    return-void
.end method
