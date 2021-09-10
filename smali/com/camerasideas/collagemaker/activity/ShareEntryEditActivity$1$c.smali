.class Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$c;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$c;->b:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

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

    invoke-static {v0, p1, v2, v1, v1}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->n(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
