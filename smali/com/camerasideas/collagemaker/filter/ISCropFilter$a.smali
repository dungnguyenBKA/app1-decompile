.class Lcom/camerasideas/collagemaker/filter/ISCropFilter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/filter/ISCropFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/camerasideas/collagemaker/filter/ISCropFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->a(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k(Lcom/camerasideas/collagemaker/filter/ISCropFilter;Z)Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0, v2}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;Z)Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e(Lcom/camerasideas/collagemaker/filter/ISCropFilter;I)I

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 16
    invoke-static {v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-object p1
.end method
