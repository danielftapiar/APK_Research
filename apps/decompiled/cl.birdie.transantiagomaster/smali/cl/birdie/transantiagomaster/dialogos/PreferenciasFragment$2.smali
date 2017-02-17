.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$2;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, "installIntent":Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->startActivity(Landroid/content/Intent;)V

    .line 63
    const/4 v1, 0x1

    return v1
.end method
