.class public Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Fg:Z

.field final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ag;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ag;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "moreEntriesMayExist"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->xH:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->Fg:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/drive/internal/ag;->a$e884fb9(Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;Landroid/os/Parcel;)V

    return-void
.end method
