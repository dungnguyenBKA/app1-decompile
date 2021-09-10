.class public final synthetic Lcom/camerasideas/collagemaker/activity/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/SettingActivity;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/s0;->a:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/s0;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/s0;->a:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/s0;->b:[Ljava/lang/String;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    aget-object p2, v0, p2

    invoke-static {p1, p2, p3}, Linshot/collage/adconfig/d;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
