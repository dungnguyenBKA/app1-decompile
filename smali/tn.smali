.class public Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltr;


# instance fields
.field private a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ltn;->b:I

    .line 4
    iput p2, p0, Ltn;->c:I

    .line 5
    iput-boolean p3, p0, Ltn;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ltn;->b:I

    return v0
.end method

.method public b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ltn;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ltn;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltn;->d:Z

    return v0
.end method

.method public e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltn;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltn;->b:I

    return-void
.end method
