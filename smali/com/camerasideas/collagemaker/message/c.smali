.class public Lcom/camerasideas/collagemaker/message/c;
.super Lcom/camerasideas/collagemaker/message/a;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/message/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/message/c;->b:I

    .line 3
    iput-object p2, p0, Lcom/camerasideas/collagemaker/message/c;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/message/c;->d:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/message/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/message/c;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/message/c;->d:Z

    return v0
.end method
