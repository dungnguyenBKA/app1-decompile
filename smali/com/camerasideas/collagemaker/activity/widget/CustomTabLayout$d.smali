.class public final Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

.field d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e()I

    move-result v0

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    .line 3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b:I

    return-void
.end method

.method e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b:I

    return-void
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c()V

    :cond_0
    return-object p0
.end method
