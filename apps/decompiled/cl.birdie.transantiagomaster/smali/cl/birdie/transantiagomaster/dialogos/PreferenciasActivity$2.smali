.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$2;
.super Ljava/lang/Object;
.source "PreferenciasActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "installIntent":Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    const/4 v1, 0x1

    return v1
.end method
