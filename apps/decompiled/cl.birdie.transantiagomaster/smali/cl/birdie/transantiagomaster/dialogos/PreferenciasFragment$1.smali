.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$1;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v4, "http://www.transantiagomaster.cl"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 42
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .line 43
    const-string v4, "android.intent.action.VIEW"

    .line 42
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {v4, v2}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 50
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "PreferenciasFragment"

    const-string v5, "excepcion al lanzar url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
