.class public final Lnet/veritran/vtuserapplication/api/map/VTMarker;
.super Ljava/lang/Object;
.source "VTMarker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d6f9f17c42b2e65L


# instance fields
.field private ID:Ljava/lang/String;

.field private arrayId:I

.field private isCenter:Z

.field private latitude:D

.field private longitude:D

.field private onClickAction:Ljava/lang/String;

.field private resource:Landroid/graphics/Bitmap;

.field private rowNumber:I

.field private snippet:Ljava/lang/String;

.field private snippetTextBackgroundColor:Ljava/lang/Integer;

.field private snippetTextColor:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visibleAutozoom:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isCenter"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isCenter:Z

    .line 44
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 134
    const-wide v0, -0x2d6f9f17c42b2e65L    # -5.21307540061458E89

    return-wide v0
.end method


# virtual methods
.method public getArrayId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->arrayId:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCenter()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isCenter:Z

    return v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->longitude:D

    return-wide v0
.end method

.method public getOnClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->onClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->resource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRowNumber()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->rowNumber:I

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippetTextBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippetTextBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSnippetTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippetTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isVisibleAutozoom()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->visibleAutozoom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setArrayId(I)V
    .locals 0
    .param p1, "arrayId"    # I

    .prologue
    .line 73
    iput p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->arrayId:I

    .line 74
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->ID:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 121
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setLatitude(D)V

    .line 122
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setLongitude(D)V

    .line 123
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 150
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->latitude:D

    .line 151
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 142
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->longitude:D

    .line 143
    return-void
.end method

.method public setOnClickAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "onClickAction"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->onClickAction:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setResource(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "resource"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->resource:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

.method public setRowNumber(I)V
    .locals 0
    .param p1, "rowNumber"    # I

    .prologue
    .line 81
    iput p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->rowNumber:I

    .line 82
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippet:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSnippetTextBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "snippetTextBackgroundColor"    # Ljava/lang/Integer;

    .prologue
    .line 113
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippetTextBackgroundColor:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method public setSnippetTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "snippetTextColor"    # Ljava/lang/Integer;

    .prologue
    .line 105
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->snippetTextColor:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->title:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->type:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setVisibleAutozoom(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "visibleAutozoom"    # Ljava/lang/Boolean;

    .prologue
    .line 166
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTMarker;->visibleAutozoom:Ljava/lang/Boolean;

    .line 167
    return-void
.end method
