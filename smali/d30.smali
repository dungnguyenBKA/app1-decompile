.class final synthetic Ld30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs;


# instance fields
.field private final a:Llw;

.field private final b:Ll00;


# direct methods
.method private constructor <init>(Llw;Ll00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld30;->a:Llw;

    iput-object p2, p0, Ld30;->b:Ll00;

    return-void
.end method

.method public static b(Llw;Ll00;)Lcs;
    .locals 1

    new-instance v0, Ld30;

    invoke-direct {v0, p0, p1}, Ld30;-><init>(Llw;Ll00;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ld30;->a:Llw;

    iget-object v1, p0, Ld30;->b:Ll00;

    .line 1
    sget v2, Lf30;->f:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Llw;->d(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
