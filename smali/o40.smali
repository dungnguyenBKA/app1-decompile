.class final synthetic Lo40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li40;


# static fields
.field private static final a:Lo40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo40;

    invoke-direct {v0}, Lo40;-><init>()V

    sput-object v0, Lo40;->a:Lo40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Li40;
    .locals 1

    sget-object v0, Lo40;->a:Lo40;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lj40;

    .line 1
    sget v0, Lp40;->i:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lj40;->e(Z)Lj40;

    return-void
.end method
