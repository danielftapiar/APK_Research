.class Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState$1;
.super Ljava/lang/Object;
.source "PathDialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 269
    new-instance v0, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    invoke-direct {v0, p1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 274
    new-array v0, p1, [Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState$1;->newArray(I)[Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
