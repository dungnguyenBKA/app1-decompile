.class public Lvq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lvq;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lvq;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lvq;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lvq;->e:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lvq;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lvq;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lvq;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    :try_start_0
    const-string v0, "http://market.android.com/details?id=photoeditor.cutout.backgrounderaser"

    .line 1
    iput-object v0, p0, Lvq;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lvq;->a:Landroid/content/Context;

    const v1, 0x7f0e006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvq;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lvq;->a:Landroid/content/Context;

    const v1, 0x7f0e006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvq;->c:Ljava/lang/String;

    const-string v0, "OK"

    .line 4
    iput-object v0, p0, Lvq;->d:Ljava/lang/String;

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lvq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lvq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7
    iget-object v1, p0, Lvq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8
    iget-object v1, p0, Lvq;->d:Ljava/lang/String;

    new-instance v2, Lvq$a;

    invoke-direct {v2, p0}, Lvq$a;-><init>(Lvq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lvq;->c:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Lmr;->d(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 15
    :try_start_2
    iget-object v1, p0, Lvq;->c:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Lmr;->d(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_2
    return-void
.end method
