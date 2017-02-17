.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3$2;
.super Ljava/lang/Object;
.source "PreferenciasFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;)Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 101
    const v1, 0x7f060168

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3$2;->this$1:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;->access$0(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;)Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 94
    const v1, 0x7f060167

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    return-void
.end method
