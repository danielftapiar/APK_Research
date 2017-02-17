.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SambaAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field availableHostsTaskId:I

.field lastAvailableHostsCheck:I

.field pathAutoComleteTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 821
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState$1;

    invoke-direct {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState$1;-><init>()V

    .line 820
    sput-object v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 811
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 836
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->availableHostsTaskId:I

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->pathAutoComleteTaskId:I

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->lastAvailableHostsCheck:I

    .line 840
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 844
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 848
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 849
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->availableHostsTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->pathAutoComleteTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->lastAvailableHostsCheck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    return-void
.end method
