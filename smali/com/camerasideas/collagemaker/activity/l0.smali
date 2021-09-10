.class public final synthetic Lcom/camerasideas/collagemaker/activity/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic b:Lcom/camerasideas/collagemaker/activity/l0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/l0;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/l0;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/l0;->b:Lcom/camerasideas/collagemaker/activity/l0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget p2, Lcom/camerasideas/collagemaker/activity/SettingActivity;->d:I

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
