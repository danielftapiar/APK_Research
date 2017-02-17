.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    const-class v2, Lcl/birdie/transantiagomaster/Splash3DActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "splashIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    const/4 v1, 0x1

    return v1
.end method
