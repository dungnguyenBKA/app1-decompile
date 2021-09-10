.class public Lcom/camerasideas/collagemaker/message/e;
.super Lcom/camerasideas/collagemaker/message/a;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/message/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/message/a;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/message/e;->b:Z

    return-void
.end method
