.class public final Lcom/google/android/gms/internal/jk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field label:Ljava/lang/String;

.field value:Ljava/lang/String;

.field private final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jk;->xH:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jk;->xH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jk;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jk;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jk;->xH:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/jl;->a$1622c8d1(Lcom/google/android/gms/internal/jk;Landroid/os/Parcel;)V

    return-void
.end method
