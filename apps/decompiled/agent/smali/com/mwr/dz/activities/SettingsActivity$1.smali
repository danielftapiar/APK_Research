.class Lcom/mwr/dz/activities/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/mwr/dz/activities/SettingsActivity$1;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mwr/dz/activities/SettingsActivity$1;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity$1;->this$0:Lcom/mwr/dz/activities/SettingsActivity;

    const-class v3, Lcom/mwr/dz/activities/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mwr/dz/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
