.class public Lpn;
.super Lon;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lon;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lpn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lpn;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lpn;

    if-eqz v0, :cond_0

    iget v0, p0, Lpn;->a:I

    check-cast p1, Lpn;

    iget p1, p1, Lpn;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lpn;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
