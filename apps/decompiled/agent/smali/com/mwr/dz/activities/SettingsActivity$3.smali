.class Lcom/mwr/dz/activities/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/SettingsActivity;->createPreferenceFrom(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/SettingsActivity$3;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "endpoint:id"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity$3;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    const-class v3, Lcom/mwr/dz/activities/EndpointSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity$3;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/mwr/dz/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    return v5
.end method
