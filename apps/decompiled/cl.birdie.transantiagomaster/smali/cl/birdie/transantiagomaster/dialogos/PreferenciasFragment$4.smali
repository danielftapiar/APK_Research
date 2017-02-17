.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$4;
.super Ljava/lang/Object;
.source "PreferenciasFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 112
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v2, 0x0

    iput v2, v1, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    .line 113
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 114
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 116
    const v1, 0x7f06014c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_0
    return v3
.end method
