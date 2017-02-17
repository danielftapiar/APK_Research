.class Lcom/mwr/dz/activities/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/util/Observer;


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
    iput-object p1, p0, Lcom/mwr/dz/activities/SettingsActivity$4;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 162
    move-object v0, p1

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 164
    .local v0, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity$4;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    # getter for: Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/mwr/dz/activities/SettingsActivity;->access$0(Lcom/mwr/dz/activities/SettingsActivity;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endpoint_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 165
    .local v1, "pref":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
