.class final Lcl/birdie/transantiagomaster/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onDescargarBaseDatos(ZZ)V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$28;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2667
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$28;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060166

    .line 2668
    const/4 v2, 0x1

    .line 2667
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2668
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2669
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2661
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$28;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060165

    .line 2662
    const/4 v2, 0x1

    .line 2661
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2662
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2663
    return-void
.end method
