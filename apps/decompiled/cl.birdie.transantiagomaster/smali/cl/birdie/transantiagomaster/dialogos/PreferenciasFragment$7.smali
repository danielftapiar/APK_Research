.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;
.super Ljava/lang/Object;
.source "PreferenciasFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 164
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "estilo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "nestilo":I
    :goto_0
    if-ne v1, v2, :cond_3

    .line 170
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 171
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapTester;->verificarMapa(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    :cond_1
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f060170

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 173
    const/4 v2, 0x0

    .line 178
    :goto_1
    return v2

    .line 168
    .end local v1    # "nestilo":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "nestilo":I
    goto :goto_0

    .line 176
    :cond_3
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f060171

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->updateSumarioEstilo(Ljava/lang/String;)V

    goto :goto_1
.end method
