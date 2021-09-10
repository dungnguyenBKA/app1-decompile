.class public Lcom/camerasideas/collagemaker/activity/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, ""

    .line 2
    iput-object p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->c:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->a:I

    .line 4
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->b:I

    .line 5
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/d;->c:Ljava/lang/String;

    return-object v0
.end method
