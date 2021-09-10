.class final synthetic Lvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# static fields
.field private static final a:Lvu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvu;

    invoke-direct {v0}, Lvu;-><init>()V

    sput-object v0, Lvu;->a:Lvu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcv$b;
    .locals 1

    sget-object v0, Lvu;->a:Lvu;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
