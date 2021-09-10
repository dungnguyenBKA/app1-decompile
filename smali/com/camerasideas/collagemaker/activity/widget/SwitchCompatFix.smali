.class public Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SourceFile"


# instance fields
.field private Q:Ljava/lang/reflect/Method;

.field private R:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->Q:Ljava/lang/reflect/Method;

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->R:Ljava/lang/reflect/Method;

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->Q:Ljava/lang/reflect/Method;

    .line 7
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->R:Ljava/lang/reflect/Method;

    .line 8
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->m()V

    return-void
.end method

.method private final m()V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "c"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->Q:Ljava/lang/reflect/Method;

    .line 2
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "j"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->R:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->Q:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/SwitchCompatFix;->R:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method
