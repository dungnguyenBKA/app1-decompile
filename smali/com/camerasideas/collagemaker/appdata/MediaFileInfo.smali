.class public Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo$a;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo$a;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    const-wide/16 v1, -0x1

    .line 40
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    const/4 v3, 0x0

    .line 41
    iput-object v3, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 42
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 43
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 45
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    const/4 v3, 0x0

    .line 30
    iput-object v3, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 32
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 34
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    .line 35
    iput-object p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    .line 36
    iput-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    const-wide/16 v1, -0x1

    .line 48
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    const/4 v3, 0x0

    .line 49
    iput-object v3, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 50
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 51
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 53
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    .line 54
    const-class v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->l:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->o:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->q:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    return-void
.end method

.method public constructor <init>(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    const/4 v3, 0x0

    .line 4
    iput-object v3, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 5
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 6
    iput-wide v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 8
    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    .line 9
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    .line 10
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    .line 14
    iget v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    .line 15
    iget-wide v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    iput-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    .line 16
    iget-wide v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    iput-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    .line 17
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->l:Ljava/lang/String;

    .line 20
    iget-wide v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    iput-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    .line 21
    iget-boolean v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->o:Z

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->o:Z

    .line 22
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->q:Ljava/lang/String;

    .line 24
    iget-boolean v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r:Z

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r:Z

    .line 25
    iget v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    iput v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    .line 26
    iget p1, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    iput p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    .line 7
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    .line 8
    iget-object v2, v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    .line 9
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 12
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->o:Z

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public p(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    return-void
.end method

.method public r(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 18
    iget p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
