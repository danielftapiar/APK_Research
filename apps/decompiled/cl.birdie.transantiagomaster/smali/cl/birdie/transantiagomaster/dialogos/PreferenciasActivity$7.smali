.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;
.super Ljava/lang/Object;
.source "PreferenciasActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    .line 164
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

    .line 170
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "estilo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 175
    .local v1, "nestilo":I
    :goto_0
    if-ne v1, v2, :cond_3

    .line 176
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 177
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapTester;->verificarMapa(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    :cond_1
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    const v4, 0x7f060170

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 179
    const/4 v2, 0x0

    .line 184
    :goto_1
    return v2

    .line 174
    .end local v1    # "nestilo":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "nestilo":I
    goto :goto_0

    .line 182
    :cond_3
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    const v4, 0x7f060171

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 183
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->updateSumarioEstilo(Ljava/lang/String;)V

    goto :goto_1
.end method
