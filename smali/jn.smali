.class public Ljn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lgq;

.field private g:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/camerasideas/collagemaker/filter/ISCropFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->g:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lgq;
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->f:Lgq;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljn;->f:Lgq;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lfq;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 3

    .line 1
    iget v0, p0, Ljn;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljn;->h:Z

    return v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljn;->e:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->b:Ljava/lang/String;

    return-void
.end method

.method public l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->g:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->a:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->c:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->d:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ljn;->h:Z

    return-void
.end method

.method public q(Lgq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn;->f:Lgq;

    return-void
.end method
