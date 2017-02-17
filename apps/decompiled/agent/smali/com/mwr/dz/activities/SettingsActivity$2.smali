.class Lcom/mwr/dz/activities/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/SettingsActivity;->createNewEndpointPreference()Landroid/preference/Preference;
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
    iput-object p1, p0, Lcom/mwr/dz/activities/SettingsActivity$2;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 127
    iget-object v0, p0, Lcom/mwr/dz/activities/SettingsActivity$2;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity$2;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    const-class v3, Lcom/mwr/dz/activities/EndpointSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4}, Lcom/mwr/dz/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return v4
.end method
