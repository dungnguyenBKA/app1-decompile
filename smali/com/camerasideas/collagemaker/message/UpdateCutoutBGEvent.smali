.class public Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent$a;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent$a;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->c:Z

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->b:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->c:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
