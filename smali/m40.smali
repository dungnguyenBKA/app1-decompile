.class final synthetic Lm40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# static fields
.field private static final a:Lm40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm40;

    invoke-direct {v0}, Lm40;-><init>()V

    sput-object v0, Lm40;->a:Lm40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lg40;
    .locals 1

    sget-object v0, Lm40;->a:Lm40;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lh40;

    .line 1
    sget p2, Lp40;->i:I

    .line 2
    new-instance p2, Le40;

    const-string v0, "Couldn\'t find encoder for type "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le40;-><init>(Ljava/lang/String;)V

    throw p2
.end method
