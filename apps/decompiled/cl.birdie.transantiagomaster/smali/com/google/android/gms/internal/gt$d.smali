.class public final Lcom/google/android/gms/internal/gt$d;
.super Lcom/google/android/gms/drive/metadata/internal/b;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
.implements Lcom/google/android/gms/drive/metadata/SortableMetadataField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/b;",
        "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SortableMetadataField",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3e8fa0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method