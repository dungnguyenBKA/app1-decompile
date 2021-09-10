.class Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->h:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->g:Landroid/net/Uri;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    const-string v4, "report"

    invoke-virtual {v3, v4}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    invoke-virtual {v3, v4}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    const-string v5, "subject"

    invoke-virtual {v4, v5}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    invoke-virtual {v1, v5}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_2
    invoke-static {v0, p1, v2, v3, v1}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->n(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
