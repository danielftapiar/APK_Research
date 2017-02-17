.class final Lcl/birdie/transantiagomaster/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->doFavoriteLine(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$21;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2204
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$21;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2205
    const v1, 0x7f06014a

    .line 2206
    const/4 v2, 0x1

    .line 2204
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2206
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2207
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2197
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$21;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2198
    const v1, 0x7f060149

    const/4 v2, 0x1

    .line 2197
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2200
    return-void
.end method
